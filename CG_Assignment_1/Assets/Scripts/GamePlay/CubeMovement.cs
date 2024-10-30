using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeMovement : MonoBehaviour
{
    public float rotationSpeed = 20.0f;
    public float roationSpeed2 = 10.0f;

    void Update()
    {
        transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
        transform.Rotate(Vector3.right, roationSpeed2 * Time.deltaTime);
    }
}   
